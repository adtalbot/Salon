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

  describe('#name') do
    it('tells you its name') do
      test_stylist = Stylist.new({:name => 'Barbara', :id  => nil})
      expect(test_stylist.name()).to(eq('Barbara'))
    end
  end

  describe('#id') do
    it('sets its id when you save it') do
      test_stylist = Stylist.new({:name => 'Barbara', :id => nil})
      test_stylist.save()
      expect(test_stylist.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('.find ') do
    it('returns a stylist by its id') do
      test_stylist = Stylist.new({:name => 'Barbara', :id => nil})
      test_stylist.save()
      test_stylist2 = Stylist.new({:name => 'Barbara', :id => nil})
      test_stylist2.save()
      expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
    end
  end
end
