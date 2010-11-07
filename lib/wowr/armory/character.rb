$:.unshift(File.dirname(__FILE__))

module Wowr
  module Armory
    module Character
      autoload :Base,               'character/base'
      autoload :EquippedItem,       'character/equipped_item'
      autoload :Full,               'character/full'
      autoload :Info,               'character/info'
      autoload :Pvp,                'character/pvp'
      autoload :RepFaction,         'character/rep_faction'
      autoload :RepFactionCategory, 'character/rep_faction_category'
      autoload :SecondBar,          'character/second_bar'
      autoload :Skill,              'character/skill'
      autoload :TalentSpec,         'character/talent_spec'

      module Spell
        autoload :Damage,             'character/spell/damage'
        autoload :ManaRegen,          'character/spell/mana_regen'
        autoload :Speed,              'character/spell/speed'
        autoload :Spell,              'character/spell/spell'
      end

      module Stat
        autoload :Agility,            'character/stat/agility'
        autoload :Armor,              'character/stat/armor'
        autoload :Base,               'character/stat/base'
        autoload :Defense,            'character/stat/defense'
        autoload :Defenses,           'character/stat/defenses'
        autoload :DodgeParryBlock,    'character/stat/dodge_parry_block'
        autoload :Intellect,          'character/stat/intellect'
        autoload :Resilience,         'character/stat/resilience'
        autoload :Resistance,         'character/stat/resistance'
        autoload :Spirit,             'character/stat/spirit'
        autoload :Stamina,            'character/stat/stamina'
        autoload :Strength,           'character/stat/strength'
      end

      module Weapon
        autoload :CritChance,         'character/weapon/crit_chance'
        autoload :Damage,             'character/weapon/damage'
        autoload :Expertise,          'character/weapon/expertise'
        autoload :HitRating,          'character/weapon/hit_rating'
        autoload :Melee,              'character/weapon/melee'
        autoload :PetBonus,           'character/weapon/pet_bonus'
        autoload :Power,              'character/weapon/power'
        autoload :Ranged,             'character/weapon/ranged'
        autoload :Skill,              'character/weapon/skill'
        autoload :Speed,              'character/weapon/speed'
      end
    end
  end
end
