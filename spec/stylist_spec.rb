require('spec_helper')

describe(Stylist) do
  describe('.all') do
    it('starts off with no stylists') do
    end
  end

  describe("#save") do
    it('lets you save stylists to the database') do
      test_stylist = Stylist.new({:name => 'Barbara', :id => nil})
      test_stylist.save()
      expect(test_stylist.id()).to(be_an_instance_of(Fixnum))
    end
  end
end
