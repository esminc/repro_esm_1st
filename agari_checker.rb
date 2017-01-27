# 1m1m1m 2s3s4s 5p5p5p 6p6p6p 9m9m


class AgariChecker
  class << self
    def agari?(hais)
      Hand.new(hais).combination
    end
  end
end

class Hand
  attr_accessor :hais

  def initialize(hais)
    @hais = hais.split(" ").map do |hai|
      ret = hai.match(/(\d)([msp])/)
      NumHai.build(ret[1], ret[2])
    end
  end

  def agari?(haises = nil)
    haises ||= @hais
    p "==============="
    p haises

    if haises.count < 3
      return head?(haises)
    end

    haises.combination(3).each { |hais|
      if koutsu?(hais) || juntsu?(hais)
        return agari?(haises - hais)
      end
    }
    false
  end

  def koutsu?(hais)
    return false if hais.count != 3
    hais.map(&:to_s).uniq.count == 1
  end

  def juntsu?(hais)
    return false if hais.count != 3
    sorted_hais = hais.map(&:num).map(&:to_i).sort
    (sorted_hais.max - sorted_hais.min) == 2
  end

  def head?(hais)
    return false if hais.count != 2
    hais.map(&:to_s).uniq.count == 1
  end
end

class JiHai

end

class NumHai
  attr_accessor :num

  class << self
    def juntsu?(hais)
      hais.inject(false) {|ret, elem|
        # elem.class ==
      }
    end

    def build(num, mark)
      case mark
      when ?m
        Manzu.new(num)
      when ?s
        Souzu.new(num)
      when ?p
        Pinzu.new(num)
      end
    end
  end

  def initialize(num)
    @num = num
  end
end

class Manzu < NumHai
  def to_s
    "#{num}m"
  end
end

class Souzu < NumHai
  def to_s
    "#{num}s"
  end
end

class Pinzu < NumHai
  def to_s
    "#{num}p"
  end
end
