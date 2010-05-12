class ImagesController < ApplicationController

    before_filter :login_required

    # GET /images/new
    # GET /images/new.xml
    def new
      @image = Image.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @image }
      end
    end
    
    # POST /images
    # POST /images.xml
    def create
      @image = Image.new(params[:image])

      respond_to do |format|
        if @image.save
          flash[:notice] = 'Image was successfully created.'
          format.html { redirect_to(:controller => :items, :action => :edit, :id => @image.item_id) }
          format.xml  { render :xml => @image, :status => :created, :location => @image }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /images/1
    # DELETE /images/1.xml
    def destroy
      @image = Image.find(params[:id])
      @item = Item.find(@image.item_id)
      @image.destroy

      respond_to do |format|
        format.html { redirect_to(:controller => :items, :action => :show, :id => @item) }
        format.xml  { head :ok }
      end
    end
end
