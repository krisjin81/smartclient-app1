class Supplyitem < ActiveRecord::Base
  attr_accessible :itemID, :itemName, :SKU, :description, :category, :units, :unitCost, :inStock, :nextShipment
end
