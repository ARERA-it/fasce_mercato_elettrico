RSpec.describe "FasciaArera" do

  context 'F1' do
    it "is singleton" do
      expect(F1.instance==F1.instance).to be(true)
    end
    it "not same of other ranges" do
      expect(F1.instance==F2.instance).to be(false)
      expect(F1.instance==F3.instance).to be(false)
    end
    it "get string" do
      expect(F1.instance.to_s).to eq("F1")
    end
    it "get integer" do
      expect(F1.instance.to_i).to eq(1)
    end
  end

  context 'F2' do
    it "is singleton" do
      expect(F2.instance==F2.instance).to be(true)
    end
    it "not same of other ranges" do
      expect(F2.instance==F1.instance).to be(false)
      expect(F2.instance==F3.instance).to be(false)
    end
    it "get string" do
      expect(F2.instance.to_s).to eq("F2")
    end
    it "get integer" do
      expect(F2.instance.to_i).to eq(2)
    end
  end

  context 'F3' do
    it "is singleton" do
      expect(F3.instance==F3.instance).to be(true)
    end
    it "not same of other ranges" do
      expect(F3.instance==F1.instance).to be(false)
      expect(F3.instance==F2.instance).to be(false)
    end
    it "get string" do
      expect(F3.instance.to_s).to eq("F3")
    end
    it "get integer" do
      expect(F3.instance.to_i).to eq(3)
    end
  end

end
