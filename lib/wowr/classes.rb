$:.unshift(File.dirname(__FILE__))

Dir[File.expand_path('../armory/*.rb', __FILE__)].each { |f| require f }

module Wowr
  # Defines legacy support for non-namespaced classes so as to not break
  # backward compatibility with previous versions of Wowr
  #
  # @private
  module Classes
    # Achievements
    class CharacterAchievementsInfo             < Wowr::Armory::Achievement::CharacterInfo;             end
    class Achievement                           < Wowr::Armory::Achievement::Base;                      end
    class CompletedAchievement                  < Wowr::Armory::Achievement::Completed;                 end
    class AchievementsCategory                  < Wowr::Armory::Achievement::Category;                  end
    class AchievementsCategoryDetails           < Wowr::Armory::Achievement::CategoryDetails;           end
    class AchievementsCategoryDetailsWithPoints < Wowr::Armory::Achievement::CategoryDetailsWithPoints; end
    class AchievementsList                      < Wowr::Armory::Achievement::List;                      end

    # Arena Team
    class ArenaTeam       < Wowr::Armory::ArenaTeam::Base;         end
    class SearchArenaTeam < Wowr::Armory::ArenaTeam::SearchResult; end
    class FullArenaTeam   < Wowr::Armory::ArenaTeam::Full;         end
    class ArenaTeamEmblem < Wowr::Armory::ArenaTeam::Emblem;       end

    # Character
    class Character          < Wowr::Armory::Character::Base;                 end
    class SearchCharacter    < Wowr::Armory::Character::Base;                 end
    class InfoCharacter      < Wowr::Armory::Character::Info;                 end
    class FullCharacter      < Wowr::Armory::Character::Full;                 end
    class Defenses           < Wowr::Armory::Character::Defenses;             end
    class SecondBar          < Wowr::Armory::Character::SecondBar;            end
    class Resistance         < Wowr::Armory::Character::Resistance;           end
    class TalentSpec         < Wowr::Armory::Character::TalentSpec;           end
    class Pvp                < Wowr::Armory::Character::Pvp;                  end
    class EquippedItem       < Wowr::Armory::Character::EquippedItem;         end
    class Skill              < Wowr::Armory::Character::Skill;                end
    class Spell              < Wowr::Armory::Character::Spell;                end
    class Melee              < Wowr::Armory::Character::Melee;                end
    class Ranged             < Wowr::Armory::Character::Ranged;               end

    class Agility            < Wowr::Armory::Character::BaseStats::Agility;   end
    class Intellect          < Wowr::Armory::Character::BaseStats::Intellect; end
    class Spirit             < Wowr::Armory::Character::BaseStats::Spirit;    end
    class Stamina            < Wowr::Armory::Character::BaseStats::Stamina;   end
    class Strength           < Wowr::Armory::Character::BaseStats::Strength;  end

    class Armor              < Wowr::Armory::Character::DefenseStats::Armor;      end
    class Avoidance          < Wowr::Armory::Character::DefenseStats::Avoidance;  end
    class Defense            < Wowr::Armory::Character::DefenseStats::Defense;    end
    class Resilience         < Wowr::Armory::Character::DefenseStats::Resilience; end

    class SpellSpeed         < Wowr::Armory::Character::SpellStats::Speed;         end
    class SpellDamage        < Wowr::Armory::Character::SpellStats::Damage;        end
    class ManaRegen          < Wowr::Armory::Character::SpellStats::ManaRegen;     end

    class WeaponDamage       < Wowr::Armory::Character::WeaponStats::Damage;       end
    class WeaponSpeed        < Wowr::Armory::Character::WeaponStats::Speed;        end
    class WeaponPower        < Wowr::Armory::Character::WeaponStats::Power;        end
    class WeaponHitRating    < Wowr::Armory::Character::WeaponStats::HitRating;    end
    class WeaponCritChance   < Wowr::Armory::Character::WeaponStats::CritChance;   end
    class WeaponExpertise    < Wowr::Armory::Character::WeaponStats::Expertise;    end

    # Dungeon
    class Dungeon < Wowr::Armory::Dungeon::Dungeon; end
    class Boss    < Wowr::Armory::Dungeon::Boss;    end

    # Guild
    class Guild       < Wowr::Armory::Guild::Base;         end
    class SearchGuild < Wowr::Armory::Guild::SearchResult; end
    class FullGuild   < Wowr::Armory::Guild::Full;         end

    # Guild Bank
    class GuildBank         < Wowr::Armory::GuildBank::Base;     end
    class GuildBankContents < Wowr::Armory::GuildBank::Contents; end
    class GuildBankLog      < Wowr::Armory::GuildBank::Log;      end
    class GuildBankBag      < Wowr::Armory::GuildBank::Bag;      end
    class GuildBankLogEntry < Wowr::Armory::GuildBank::LogEntry; end
    class GuildBankLogItem  < Wowr::Armory::GuildBank::LogItem;  end
    class GuildBankItem     < Wowr::Armory::GuildBank::Item;     end

    # Item
    class Item             < Wowr::Armory::Item::Base;         end
    class FullItem         < Wowr::Armory::Item::Full;         end
    class ItemInfo         < Wowr::Armory::Item::Info;         end
    class ItemTooltip      < Wowr::Armory::Item::Tooltip;      end
    class SearchItem       < Wowr::Armory::Item::SearchResult; end
    class DisenchantItem   < Wowr::Armory::Item::Disenchant;   end
    class CreatedItem      < Wowr::Armory::Item::Created;      end
    class Reagent          < Wowr::Armory::Item::Reagent;      end
    class ItemEquipData    < Wowr::Armory::Item::EquipData;    end
    class ItemSetData      < Wowr::Armory::Item::SetData;      end
    class ItemSetBonus     < Wowr::Armory::Item::SetBonus;     end
    class ItemSpell        < Wowr::Armory::Item::Spell;        end
    class ItemDamageData   < Wowr::Armory::Item::DamageData;   end
    class ItemSource       < Wowr::Armory::Item::Source;       end
    class ItemQuest        < Wowr::Armory::Item::Quest;        end
    class ItemDropCreature < Wowr::Armory::Item::DropCreature; end
    class ItemCost         < Wowr::Armory::Item::Cost;         end
    class ItemCostToken    < Wowr::Armory::Item::CostToken;    end
    class ItemVendor       < Wowr::Armory::Item::Vendor;       end
    class ItemReagentFor   < Wowr::Armory::Item::ReagentFor;   end
    
    # Guild News
    class GuildNews < Wowr::Armory::GuildNews::Base; end
  end
end
