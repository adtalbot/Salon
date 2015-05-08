class Stylist
  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    returned_stylist = DB.exec("SELECT * FROM stylists;")
    stylists = []
    returned_stylist.each() do |index|
      name = index.fetch('name')
      id = index.fetch('id').to_i()
      stylists.push(Stylist.new({:name => name, :id => id}))
    end
    stylists
  end
end
