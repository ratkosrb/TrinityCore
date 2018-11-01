#include "SpellDataDisplay.h"
#include "DBCfmt.h"
#include "DBCStructure.h"
#include "Errors.h"
#include "Globals.h"
#include "Log.h"
#include "QtHelpers.h"
#include "SharedDefines.h"
#include "SpellAccessor.h"
#include "SpellAttributes.h"
#include "SpellAuraProperties.h"
#include "SpellBaseProperties.h"
#include "SpellCasterProperties.h"
#include "SpellEffectProperties.h"
#include "SpellProperties.h"
#include "SpellSourceSelector.h"
#include "SpellTargetProperties.h"

#define FOR_EACH_CHILD(v) for (SpellDataElement* v : std::initializer_list<SpellDataElement*>(  \
    {                                                                                           \
        _baseProperties,                                                                        \
        _spellProperties,                                                                       \
        _auraProperties,                                                                        \
        _casterProperties,                                                                      \
        _targetProperties,                                                                      \
        _attributes,                                                                            \
        _effect0,                                                                               \
        _effect1,                                                                               \
        _effect2                                                                                \
    }                                                                                           \
))

void SpellDataDisplay::Setup()
{
    FIND_Q_CHILD_DELAYED(_sourceSelector);
    FIND_Q_CHILD_DELAYED(_baseProperties);
    FIND_Q_CHILD_DELAYED(_spellProperties);
    FIND_Q_CHILD_DELAYED(_auraProperties);
    FIND_Q_CHILD_DELAYED(_casterProperties);
    FIND_Q_CHILD_DELAYED(_targetProperties);
    FIND_Q_CHILD_DELAYED(_attributes);
    FIND_Q_CHILD_DELAYED(_effect0);
    FIND_Q_CHILD_DELAYED(_effect1);
    FIND_Q_CHILD_DELAYED(_effect2);

    _effect0->SetIndex(EFFECT_0);
    _effect1->SetIndex(EFFECT_1);
    _effect2->SetIndex(EFFECT_2);

    _sourceSelector->Setup();
    FOR_EACH_CHILD(child)
    {
        child->Setup();
    }

    CONNECT(_sourceSelector, NeedSave, this, SaveToDB);
    CONNECT(_sourceSelector, NeedRedraw, this, Redraw);
    CONNECT(this, HavePendingChanges, _sourceSelector, SetHavePendingChanges);

    FOR_EACH_CHILD(child)
    {
        CONNECT(child, ValueChanged, this, ChildValueChanged);
    }

    QSizePolicy sp = this->sizePolicy();
    sp.setRetainSizeWhenHidden(true);
    this->setSizePolicy(sp);
}

void SpellDataDisplay::SetSpell(uint32 spellId)
{
    _sourceSelector->UpdateForSpell(spellId);
}

void SpellDataDisplay::SaveToDB()
{
    SpellEntry entry = *_sourceSelector->GetCurrentSpellEntry();

    FOR_EACH_CHILD(child)
    {
        child->BuildEntry(entry);
    }

    DatabaseDBCStore<SpellEntry>::Save("spell_dbc", CustomSpellEntryfmt, "Id", entry.Id, &entry);

    _sourceSelector->UpdateForSpell(entry.Id);
}

void SpellDataDisplay::Redraw()
{
    SpellEntry const* entry = _sourceSelector->GetCurrentSpellEntry();
    if (!entry)
    {
        this->hide();
        return;
    }
    TC_LOG_INFO("dbedit", "Selected spell: %u (%s)", entry->Id, SpellAccessor::GetSpellName(entry->Id));

    FOR_EACH_CHILD(child)
    {
        child->SetEntry(entry);
    }

    Q_EMIT HavePendingChanges(false);
}
