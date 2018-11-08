#require 'json'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

class StartScrap


    def perform
        
        return save(tab_crypto(Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))))
        
    end 

    def tab_crypto(page)
        crypto_name = []
        crypto_value = []
        crypto_hash = Hash.new
        #------------------------>store crypto names in a tab<----------------
        page.css('a.currency-name-container.link-secondary').each do |node|
            crypto_name << node.text
        end
        #------------------------>store values in a tab<---------------------
        page.css('[@class="price"]').each do |node|
            crypto_value << node.text
        end
        #------->store both tab in a hash where crypto names are keys and crypto values are values<------
        i=0
        while i<crypto_name.size
            crypto_hash.store(crypto_name[i], crypto_value[i])
            i += 1
        end
        return crypto_hash
    end
    def save(hash) 
        hash.each do |k, val|
            Crypto.create(name: k, currency: val)
        end
    end
end


#=====pour extraire des data d'un fichier json=====
=begin
        json = File.read('app/services/emails.json')
        data = JSON.parse(json)
        puts data
=end