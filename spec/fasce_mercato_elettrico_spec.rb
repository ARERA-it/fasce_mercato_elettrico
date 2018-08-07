RSpec.describe FasceMercatoElettrico do

  it "has a version number" do
    expect(FasceMercatoElettrico::VERSION).not_to be nil
  end

  it "christmas day is holiday" do
    christmas_day_2018 = Date.civil(2018, 12, 25)
    expect(FasceME.holiday?(christmas_day_2018)).to be(true)
  end

  it "christmas day is holiday" do
    christmas_day_2018 = Date.civil(2018, 12, 25)
    expect(FasceME.holiday?(christmas_day_2018)).to be(true)
  end

  it "12th august 2018 is sunday, then holiday" do
    sunday = Date.civil(2018, 8, 12)
    expect(FasceME.holiday?(sunday)).to be(true)
  end

  it "25th april 2018 is wednesday but 'Anniversario della liberazione d'Italia', then holiday" do
    lib = Date.civil(2018, 4, 25)
    expect(FasceME.holiday?(lib)).to be(true)
  end
end
