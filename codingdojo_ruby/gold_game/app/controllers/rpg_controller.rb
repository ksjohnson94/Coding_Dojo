class RpgController < ApplicationController

  def index

  end
  def farm
    r = Random.new
    r.rand(10..20)
  end
  def cave

  end
  def casino

  end
  def house

  end

end
