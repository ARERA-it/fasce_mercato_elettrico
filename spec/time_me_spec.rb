RSpec.describe "TimeME" do

  context "Fascia ARERA" do
    let(:holiday_int_arr){Array.new(24,3)}
    let(:saturday_int_arr){[3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3]}
    let(:workday_int_arr){[3,3,3,3,3,3,3,2,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,3]}

    it "monday but holiday" do
      t = Time.new(2018,1,1)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_arera.to_i}
      expect(arr).to eq(holiday_int_arr)
    end

    it "monday not holiday" do
      t = Time.new(2018,1,8)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_arera.to_i}
      expect(arr).to eq(workday_int_arr)
    end

    it "saturday but holiday" do
      t = Time.new(2018,6,2) # festa della Repubblica
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_arera.to_i}
      expect(arr).to eq(holiday_int_arr)
    end

    it "saturday but holiday (epifania)" do
      t = Time.new(2018,1,6) # Epifania
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_arera.to_i}
      expect(arr).to eq(holiday_int_arr)
    end

    it "saturday not holiday" do
      t = Time.new(2018,1,27)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_arera.to_i}
      expect(arr).to eq(saturday_int_arr)
    end

    it "sunday" do
      t = Time.new(2018,1,28)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_arera.to_i}
      expect(arr).to eq(holiday_int_arr)
    end
  end



  context "Fascia GME" do
    let(:holiday_int_arr){Array.new(24,0)}
    let(:saturday_int_arr){Array.new(24,0)}
    let(:workday_int_arr){[0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0]}


    it "monday but holiday" do
      t = Time.new(2018,1,1)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_gme.to_i}
      expect(arr).to eq(holiday_int_arr)
    end

    it "monday not holiday" do
      t = Time.new(2018,1,8)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_gme.to_i}
      expect(arr).to eq(workday_int_arr)
    end

    it "saturday but holiday" do
      t = Time.new(2018,6,2) # festa della Repubblica
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_gme.to_i}
      expect(arr).to eq(holiday_int_arr)
    end

    it "saturday but holiday (epifania)" do
      t = Time.new(2018,1,6) # Epifania
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_gme.to_i}
      expect(arr).to eq(holiday_int_arr)
    end

    it "saturday not holiday" do
      t = Time.new(2018,1,27)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_gme.to_i}
      expect(arr).to eq(saturday_int_arr)
    end

    it "sunday" do
      t = Time.new(2018,1,28)
      arr = (0..23).map{|h| t+h*3600}.map{|h| h.fascia_gme.to_i}
      expect(arr).to eq(holiday_int_arr)
    end
  end
end
