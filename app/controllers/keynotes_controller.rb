class KeynotesController < ApplicationController
  def index
    keynotes = Keynote.all
    render json: keynotes.to_json(except: [:created_at, :updated_at])
  end

  def show
    keynotes = Keynote.find(params[:id])
    render json: keynotes.to_json(except: [:created_at, :updated_at])
  end

  def create
    keynote = Keynote.new(keynote_params)
    if keynote.save
      render json: keynote.to_json(except: [:created_at, :updated_at])
    else
      render json: {error: "Sorry, could not create this keynote."}
    end
  end

  def destroy
    keynote = Keynote.find(params[:id])
    keynote.destroy
    render json: {message: "Keynote deleted!"}
  end

  private

  def keynote_params
    params.require(:keynote).permit(:title, :speaker, :description, :date_time)
  end
end
