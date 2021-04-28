class Api::V1::MainController < ApplicationController
    def fibonacci
      size = main_params[:size].to_i
      index = main_params[:n].to_i
      result = FibonacciService.new(size: size, index: index).get_value
      
      render json: {status: 'Success', index: index,
      value: result["value"],
      fibonacci: result["array"]}, status: :ok
    end

    private
    def main_params
      params.require(:params).require(:size)
      params.require(:params).require(:n)
      params.require(:params).permit(:size, :n)
    end
end
