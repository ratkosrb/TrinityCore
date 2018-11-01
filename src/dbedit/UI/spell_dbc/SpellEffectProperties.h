#ifndef TRINITY_DBEDIT_SPELLEFFECTPROPERTIES_H
#define TRINITY_DBEDIT_SPELLEFFECTPROPERTIES_H

#include "Define.h"
#include "SpellDataDisplay.h"
#include <QWidget>

struct SpellEntry;
enum SpellEffIndex : uint8;

class SpellEffectProperties : public SpellDataElement
{
    Q_OBJECT

    public:
        SpellEffectProperties(QWidget* parent = nullptr) : SpellDataElement(parent) {}
        void SetIndex(SpellEffIndex i) { _index = i; }
        void Setup() override;
        void SetEntry(SpellEntry const*) override;
        void BuildEntry(SpellEntry&) const override;

    Q_SIGNALS:
        void ValueChanged();

    private:
        SpellEffIndex _index;
};

#endif
