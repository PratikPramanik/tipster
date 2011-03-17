class TipsController < ApplicationController

  def index
    @tips = Tip.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @tip = Tip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @tip = Tip.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @tip = Tip.find(params[:id])
  end

  def create
    @tip = Tip.new(params[:tip])

    respond_to do |format|
      if @tip.save
        DistrictMailer.tip_email(@tip).deliver
        format.html { redirect_to(new_tip_url, :notice => 'Tip was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @tip = Tip.find(params[:id])

    respond_to do |format|
      if @tip.update_attributes(params[:tip])
        format.html { redirect_to(@tip, :notice => 'Tip was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @tip = Tip.find(params[:id])
    @tip.destroy

    respond_to do |format|
      format.html { redirect_to(tips_url) }
    end
  end
end
