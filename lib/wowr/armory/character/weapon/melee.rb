module Wowr
  module Armory
    module Character
      module Weapon
        # = Melee
        #
        # Represents a <tt>melee</tt> element
        #
        # == Relevant XML example:
        #
        #   <melee>
        #     <mainHandDamage dps="725.4" max="2380" min="1879" percent="0" speed="2.94"/>
        #     <offHandDamage dps="149.8" max="245" min="244" percent="0" speed="1.63"/>
        #     <mainHandSpeed hastePercent="22.60" hasteRating="741" value="2.94"/>
        #     <offHandSpeed hastePercent="22.60" hasteRating="741" value="1.63"/>
        #     <power base="3169" effective="3414" increasedDps="243.0"/>
        #     <hitRating increasedHitPercent="8.03" penetration="0" reducedArmorPercent="0.00" value="247"/>
        #     <critChance percent="60.33" plusPercent="29.95" rating="1375"/>
        #     <expertise additional="0" percent="0.00" rating="0" value="0"/>
        #   </melee>
        #
        # == Example Pages:
        #
        # * http://www.wowarmory.com/character-sheet.xml?r=Mal'Ganis&cn=Alephone
        # * http://www.wowarmory.com/character-sheet.xml?r=Mal'Ganis&cn=Sebudai
        class Melee
          # <tt>mainHandDamage</tt> element
          # @return [Damage]
          attr_reader :main_hand_damage

          # <tt>offHandDamage</tt> element
          # @return [Damage]
          attr_reader :off_hand_damage

          # <tt>mainHandSpeed</tt> element
          # @return [Speed]
          attr_reader :main_hand_speed

          # <tt>offHandSpeed</tt> element
          # @return [Speed]
          attr_reader :off_hand_speed

          # <tt>power</tt> element
          # @return [Power]
          attr_reader :power

          # <tt>hitRating</tt> element
          # @return [HitRating]
          attr_reader :hit_rating

          # <tt>critChance</tt> element
          # @return [CritChance]
          attr_reader :crit_chance

          # <tt>expertise</tt> element
          # @return [Expertise]
          attr_reader :expertise

          # @param [Hpricot::Elem] elem <tt>melee</tt> element
          def initialize(elem)
            @main_hand_damage = Damage.new(elem%'mainHandDamage')
            @off_hand_damage  = Damage.new(elem%'offHandDamage')

            @main_hand_speed  = Speed.new(elem%'mainHandSpeed')
            @off_hand_speed   = Speed.new(elem%'offHandSpeed')

            @power            = Power.new(elem%'power')
            @hit_rating       = HitRating.new(elem%'hitRating')
            @crit_chance      = CritChance.new(elem%'critChance')
            @expertise        = Expertise.new(elem%'expertise')
          end
        end
      end
    end
  end
end
