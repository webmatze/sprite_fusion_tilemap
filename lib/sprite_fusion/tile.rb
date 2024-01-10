# frozen_string_literal: true

module SpriteFusion
  # class to represent a Tile of a Tilemap
  class Tile
    attr_accessor :id, :x, :y

    def initialize(data)
      @id = data['id']
      @x = data['x']
      @y = data['y']
    end
  end
end
