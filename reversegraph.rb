# Write an algorithm that computes the reversal of a directed graph. For example, if a graph consists of A -> B -> C, it should become A <- B <- C

class Graph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = {}
  end

  def add_edge(source, destination)
    @adjacency_list[source] ||= []
    @adjacency_list[source] << destination
  end

  def reverse_graph
    reversed_graph = Graph.new

    @adjacency_list.each do |source, destinations|
      destinations.each do |destination|
        reversed_graph.add_edge(destination, source)
      end
    end

    reversed_graph
  end
end

graph = Graph.new

graph.add_edge('A', 'B')
graph.add_edge('B', 'C')

reversed_graph = graph.reverse_graph
puts reversed_graph.adjacency_list
