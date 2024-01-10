# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../lib/sprite_fusion'

class LayerTest < Minitest::Test
  def setup
    path = "#{File.dirname(__FILE__)}/../data/tilemap.json"
    tilemap_json = JSON.load_file(path)

    @layer = SpriteFusion::Layer.new tilemap_json['layers'][0]
    @other_layer = SpriteFusion::Layer.new tilemap_json['layers'][1]
  end

  def test_new
    assert_equal 'Pickups', @layer.name
    refute @layer.collider?
    assert @other_layer.collider?
    assert_kind_of Array, @layer.tiles
    assert_equal 2, @layer.tiles.size
    @layer.tiles.each do |tile|
      assert_kind_of SpriteFusion::Tile, tile
    end
  end
end
