require 'to_do_list'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      activity = TodoList.new()
      activity.add('Drawing')
      expect(activity.todos[0]).to eq('Drawing')
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      activity2 = TodoList.new()
      activity2.remove('Drawing')
      expect(activity2.todos.size).to eq(0)
    end
    end


  describe "#todos" do
    it "returns all todos" do
      activity3 = TodoList.new()
      activity3.add('Drawing')
      activity3.add('Painting')
      expect(activity3.todos).to eq(['Drawing','Painting'])
    end
  end
end
