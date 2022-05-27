class ListsController < ApplicationController
  def new
    # Viewへ渡すインスタンス変数にmodelオブジェクトを作成
    @list = List.new
  end
  
  def create
    # データを受け取り、新規登録するためのインスタンス作成
    @list = List.new(list_params)
    # データをデータベースにほぞんするためのsaveメソッドの実行
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
  def destroy
    list = List.find(params[:id])     # findにより、データ(レコード)を一件取得
    list.destroy                      # データを削除
    redirect_to '/lists'              # 投稿一覧画面へリダイレクト
  end
  
  private # これより下に記述すると、アクションとして認識されなくなり、
          # メソッドの呼び出しを制限できる。
  
  # ストロングパラメータ
  def list_params         # 本来であればアクションとして認識し、URLで呼び出せてしまう。
  # praivateメソッドは「モデル名_params」でする
    params.require(:list).permit(:title, :body, :image)
  end
  
end