class VoucherAccountsController < ApplicationController
  before_action :set_voucher, only: [:show,:edit,:update,:destroy]

  def help
  end
  
  def index
    @voucher_accounts = VoucherAccount.all
  end
  
  def show
  end
  
  def new
    @voucher_account = VoucherAccount.new
  end
  
  def edit
  end
  
  def create
    @voucher_account = Voucher.new(voucher_params)

    respond_to do |format|
      if @voucher_account.save
        format.html { redirect_to @voucher_account, notice: 'Voucher Account was successfully created.' }
        format.json { render :show, status: :created, location: @voucher_account }
      else
        format.html { render :new }
        format.json { render json: @voucher_account.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
  end
  
  def destroy
  end

  private
  def set_voucher
    @voucher = VoucherAccount.find(params[:id])
  end
  def voucher_params
    params.require(:voucher_account).permit(:name)
  end
end
