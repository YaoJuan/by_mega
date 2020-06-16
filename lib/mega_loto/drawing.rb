
module MegaLoto
  class Drawing
    def draw
      5.times.map { single_row }
    end

    private
    def single_row
      rand(0...60)
    end

  end
end
