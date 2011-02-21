module NHRuby

  #
  # Fibonacci Sequence Generator
  #
  #   Fn = F(n-1) + F(n-2)
  #   where F0 = 0
  #         F1 = 1
  #
  # This class calculates and caches the Fibonacci numbers for
  # any size sequence.  For example, for n = 10:
  #
  #   0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
  #
  class Fibonacci

    def initialize
      @seq = [0, 1]
    end

    # Return the Fibonacci number at position n.  Will generate missing
    # entries in the cached sequence up to n, if necessary.
    def [](n)
      @seq[n] ||= self.[](n-1) + self.[](n-2)
    end

  end
end
