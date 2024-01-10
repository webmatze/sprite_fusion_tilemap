# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../lib/sprite_fusion'

class TileTest < Minitest::Test
  def setup
    path = "#{File.dirname(__FILE__)}/../data/tilemap.json"
    tilemap_json = JSON.load_file(path)

    tile_json = tilemap_json['layers'][0]['tiles'][0]
    @tile = SpriteFusion::Tile.new tile_json
  end

  def test_new
    assert_equal '0', @tile.id
    assert_equal 12, @tile.x
    assert_equal 5, @tile.y
  end
end
