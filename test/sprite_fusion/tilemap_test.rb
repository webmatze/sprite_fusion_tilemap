# frozen_string_literal: true

require 'minitest/autorun'
require 'json'
require_relative '../../lib/sprite_fusion'

class TilemapTest < Minitest::Test
  def setup
    @path = "#{File.dirname(__FILE__)}/../data/tilemap.json"
    @tilemap_json = JSON.load_file(@path)
  end

  def test_load
    tilemap = SpriteFusion::Tilemap.load(@tilemap_json)
    assert_kind_of SpriteFusion::Tilemap, tilemap
    assert_equal 16, tilemap.tile_size
    assert_equal 24, tilemap.map_width
    assert_equal 9, tilemap.map_height
    assert_kind_of Array, tilemap.layers
    assert_equal 2, tilemap.layers.size
    tilemap.layers.each do |layer|
      assert_kind_of SpriteFusion::Layer, layer
    end
  end
end
