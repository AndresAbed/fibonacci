class FibonacciService
    def initialize(params)
        @size = params[:size]
        @index = params[:index]
    end

    def get_value
      arr = generate_fibonacci
      result = {
        "value" => arr[@index],
        "array" => arr
      }      
    end

    private
    def generate_fibonacci
      (1..@size).inject([0,1]) { |arr| arr << arr.last(2).inject(:+)}
    end
end