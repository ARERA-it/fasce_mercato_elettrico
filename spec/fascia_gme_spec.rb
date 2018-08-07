RSpec.describe "FasciaGME" do

  context 'Peak' do
    it "is singleton" do
      expect(Peak.instance==Peak.instance).to be(true)
    end
    it "not same of other ranges" do
      expect(Peak.instance==OffPeak.instance).to be(false)
    end
    it "get string" do
      expect(Peak.instance.to_s).to eq("Peak")
    end
    it "get integer" do
      expect(Peak.instance.to_i).to eq(1)
    end
  end

  context 'OffPeak' do
    it "is singleton" do
      expect(OffPeak.instance==OffPeak.instance).to be(true)
    end
    it "not same of other ranges" do
      expect(OffPeak.instance==Peak.instance).to be(false)
    end
    it "get string" do
      expect(OffPeak.instance.to_s).to eq("OffPeak")
    end
    it "get integer" do
      expect(OffPeak.instance.to_i).to eq(0)
    end
  end
end
