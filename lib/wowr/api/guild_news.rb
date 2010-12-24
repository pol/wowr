module Wowr
  module API
    module GuildNews
      def self.included(base)
        base.class_eval do
          @@guild_news_url    = 'guild/%s/%s/news'.freeze

          cattr_reader :guild_news_url
        end
      end
      
      # Get the guild news.
      # Guild name is optional, assuming it's set in the api constructor.
      # Requires realm.
      # * name (String) Name of the guild to retrieve, defaults to that specified in constructor
      # * options (Hash) Optional hash of arguments identical to those used in the API constructor (realm, debug, cache etc.)
      def get_guild_news(name = @guild_name, options = {})
      #         if (name.is_a?(Hash))
      #           options = name
      #         else
      #           options.merge!(:guild_name => name)
      #         end
      # 
      #         options = merge_defaults(options)
      # 
              if options[:guild_name].nil? || options[:guild_name].blank?
                raise Wowr::Exceptions::GuildNameNotSet.new
              elsif options[:realm].nil? || options[:realm].empty?
                raise Wowr::Exceptions::RealmNotSet.new
              end
      # 
      #         xml = get_xml(@@guild_info_url, options)
      # 
        # unless (xml%'guildInfo').nil? || (xml%'guildInfo').children.empty?
        #   return Wowr::Classes::FullGuild.new(xml)
        # else
        #   raise Wowr::Exceptions::GuildNotFound.new(options[:guild_name])
        # end
      end
    end
  end
end
