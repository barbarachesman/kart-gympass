require 'test_helper'

class LapTest < ActiveSupport::TestCase
  test "new lap" do
    lap = Lap.new(id_volta: 'Test',nome_piloto: 1223, hora: 12.33, tempo_volta: 433.22, velocidade_media: 33.22)
    assert lap.valid?
  end
  test "not valid without name" do
    lap = Lap.new(id_volta: 'Test',nome_piloto: 1223, hora: 12.33, tempo_volta: 433.22, velocidade_media: 33.22)
  	assert_not lap.save, "no name validation"
  end
end
