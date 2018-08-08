RSpec.describe FasceMercatoElettrico do

  it "has a version number" do
    expect(FasceMercatoElettrico::VERSION).not_to be nil
  end


  it "christmas day is holiday" do
    day = Date.civil(2018, 12, 25)
    expect(day.holiday_in_italy?).to be(true)
  end

  it "christmas day is holiday" do
    day = Date.civil(2018, 12, 25)
    expect(day.holiday_in_italy?).to be(true)
  end

  it "12th august 2018 is sunday, then holiday" do
    day = Date.civil(2018, 8, 12)
    expect(day.holiday_in_italy?).to be(true)
  end

  it "25th april 2018 is wednesday but 'Anniversario della liberazione d'Italia', then holiday" do
    day = Date.civil(2018, 4, 25)
    expect(day.holiday_in_italy?).to be(true)
  end
end
