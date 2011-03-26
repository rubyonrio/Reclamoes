class ReclamacaosController < ApplicationController
  # GET /reclamacaos
  # GET /reclamacaos.xml
  def index
    @reclamacaos = Reclamacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reclamacaos }
    end
  end

  # GET /reclamacaos/1
  # GET /reclamacaos/1.xml
  def show
    @reclamacao = Reclamacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reclamacao }
    end
  end

  # GET /reclamacaos/new
  # GET /reclamacaos/new.xml
  def new
    @reclamacao = Reclamacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reclamacao }
    end
  end

  # GET /reclamacaos/1/edit
  def edit
    @reclamacao = Reclamacao.find(params[:id])
  end

  # POST /reclamacaos
  # POST /reclamacaos.xml
  def create
    @reclamacao = Reclamacao.new(params[:reclamacao])

    respond_to do |format|
      if @reclamacao.save
        format.html { redirect_to(@reclamacao, :notice => 'Reclamacao was successfully created.') }
        format.xml  { render :xml => @reclamacao, :status => :created, :location => @reclamacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reclamacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reclamacaos/1
  # PUT /reclamacaos/1.xml
  def update
    @reclamacao = Reclamacao.find(params[:id])

    respond_to do |format|
      if @reclamacao.update_attributes(params[:reclamacao])
        format.html { redirect_to(@reclamacao, :notice => 'Reclamacao was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reclamacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reclamacaos/1
  # DELETE /reclamacaos/1.xml
  def destroy
    @reclamacao = Reclamacao.find(params[:id])
    @reclamacao.destroy

    respond_to do |format|
      format.html { redirect_to(reclamacaos_url) }
      format.xml  { head :ok }
    end
  end
end
