# frozen_string_literal: true

require 'json'

module SpriteFusion
  # class to load a Sprite Fusion tilemap json file
  # @see: https://hugo-dz.notion.site/Sprite-Fusion-JSON-Export-7fce56b8d1cb457d82a1550c59f9f2e3
  class Tilemap
    attr_accessor :tile_size, :map_width, :map_height, :layers

    def initialize(data)
      @tile_size = data['tileSize']
      @map_width = data['mapWidth']
      @map_height = data['mapHeight']
      @layers = []
      data['layers'].each do |layer|
        @layers << Layer.new(layer)
      end
    end

    def self.load(path)
      tilemap_data = JSON.load_file(path)
      Tilemap.new(tilemap_data)
    end
  end
end
