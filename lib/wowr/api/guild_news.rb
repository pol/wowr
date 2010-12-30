module Wowr
  module API
    module GuildNews
      require 'cgi'
      
      def self.included(base)
        base.class_eval do
          @@guild_news_url    = 'guild/%s/%s/news'.freeze
        end
      end


      def guild_news_url(options = {})
        check_guild_news_options(options)

        # Space to hyphen, everything else omitted
        r = options[:realm].downcase.gsub(/[^\w ]/,'').gsub(/ /,'-')
        # URL encoded
        gn = CGI.escape(options[:guild_name].downcase)
        
        @@guild_news_url % [r,gn]
      end
      
      # Get the guild news.
      # Guild name is optional, assuming it's set in the api constructor.
      # Requires realm.
      # * name (String) Name of the guild to retrieve, defaults to that specified in constructor
      # * options (Hash) Optional hash of arguments identical to those used in the API constructor (realm, debug, cache etc.)
      def get_guild_news(options = {})
        check_guild_news_options(options)
        
        url = guild_news_url(options)
        news_list = get_html(url).search('ul#news-list')
        
        if news_list.nil?
          raise Wowr::Exceptions::GuildNotFound.new(options[:guild_name])
        else
          return Wowr::Classes::GuildNews.new(news_list)
        end
      end
      
      private
      
      def check_guild_news_options(options)
        options[:name]  ||= @guild_name
        options[:realm] ||= @realm

        if options[:guild_name].nil? || options[:guild_name].blank?
          raise Wowr::Exceptions::GuildNameNotSet.new
        end
        
        if options[:realm].nil? || options[:realm].empty?
          raise Wowr::Exceptions::RealmNotSet.new
        end        
      end
    end
  end
end
