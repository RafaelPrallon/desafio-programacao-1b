class Sell < ActiveRecord::Base
  
  def self.readfile (filename)
    File.open(filename).readlines.drop(1).each do |line| 
      buyer, description, price, qtd, provider = line.strip.split(/\t/) 
      u = Sell.new(:buyer => buyer, :description => description, :price => price, :qtd => qtd, :provider => provider) 
      if !(u.save)
        render 'index'
      end
    end
  end
  
end
