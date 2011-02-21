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

    # Return the Fibonacci number at position n.  Will regenerate the
    # sequence up to n, if necessary.
    def [](n)
      generate(n) if @seq.length < n
      @seq[n]
    end

    # Return the Fibonacci number at position n.  Will generate and
    # store all numbers below n in the sequence. 
    def generate(n)
      @seq[n] = generate(n-1) + generate(n-2)
    end 

  end
end
