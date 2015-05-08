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

  describe('#==') do
    it('is the same stylist if it has the same name') do
      stylist1 = Stylist.new({:name => 'Barbara', :id => nil})
      stylist2 = Stylist.new({:name => 'Barbara', :id => nil})
      expect(stylist1).to(eq(stylist2))
    end
  end
end
