require('spec_helper')

describe(Client) do
  describe('.all') do
    it('is empty at first') do
      expect(Client.all()).to(eq([]))
    end
  end

  describe('#name') do
    it('lets you give it a name') do
      test_client = Client.new({:name => 'Barbara', :id => nil, :stylist_id => 1})
      expect(test_client.name()).to(eq('Barbara'))
    end
  end

  describe('#save') do
    it('lets you save clients to a database') do
      test_client = Client.new(({:name => 'Joey', :id => nil, :stylist_id => 1}))
      test_client.save()
      expect(test_client.id()).to(be_an_instance_of(Fixnum))
    end
  end
end
