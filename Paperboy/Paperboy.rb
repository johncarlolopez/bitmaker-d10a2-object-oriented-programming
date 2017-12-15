#used in "../exercise4.rb"
class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @min_quota = 50
  end
  #getters and setters
  def name
    @name
  end
  def name=(name)
    @name = name
  end
  def experience
    @experience
  end
  # required to have earnings be read-only
  def earnings
    @earnings
  end
  def quota
    @min_quota + (@experience / 2)
  end
  def deliver(start_address,end_address)
    #stretch: will work regardless which value is greater
    number_papers = (end_address - start_address).abs + 1
    if (number_papers >= quota)
      #earnings at normal rate up to quota
      @earnings += quota * 0.25
      #extra earnings(if any) above quota
      @earnings += (number_papers - quota) * 0.5
    else
      #earnings at normal rate since not at or above quota
      @earnings += number_papers * 0.25
      #subtract 2 for not meeting quota
      @earnings -= 2
    end
    @experience += number_papers
  end
  def report
    "#{name} has delivered #{experience} papers and earned $#{earnings.round(2)} so far!"
  end
  #Problem/variables:
  #start_address
  #end_address
  #min_quota
  #quota = min_quota + (@experience / 2.0)
  #rate = 0.25 per paper delivered
  #rate = 0.5 if > quota
  #if papers < quota {earnings-2}
  #each paper delivered is + 1 experience
  #req: at least these methods:
  # quota
  # deliver(start_address, end_address)
  # report
end
