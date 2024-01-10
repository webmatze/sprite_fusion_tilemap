# frozen_string_literal: true

module SpriteFusion
  # class to represent a Layer of a Tilemap
  class Layer
    attr_accessor :name, :tiles
    attr_writer :collider

    def initialize(data)
      @name = data['name']
      @collider = data['collider']
      @tiles = []
      data['tiles'].each do |tile|
        @tiles << SpriteFusion::Tile.new(tile)
      end
    end

    def collider?
      !!@collider
    end
  end
end
