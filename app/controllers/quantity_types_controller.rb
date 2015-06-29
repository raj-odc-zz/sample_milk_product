class QuantityTypesController < ApplicationController
  before_action :set_quantity_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @quantity_types = QuantityType.all
    respond_with(@quantity_types)
  end

  def show
    respond_with(@quantity_type)
  end

  def new
    @quantity_type = QuantityType.new
    respond_with(@quantity_type)
  end

  def edit
  end

  def create
    @quantity_type = QuantityType.new(quantity_type_params)
    @quantity_type.save
    respond_with(@quantity_type)
  end

  def update
    @quantity_type.update(quantity_type_params)
    respond_with(@quantity_type)
  end

  def destroy
    @quantity_type.destroy
    respond_with(@quantity_type)
  end

  private
    def set_quantity_type
      @quantity_type = QuantityType.find(params[:id])
    end

    def quantity_type_params
      params.require(:quantity_type).permit(:name)
    end
end
