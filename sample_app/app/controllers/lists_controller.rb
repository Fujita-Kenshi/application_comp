class ListsController < ApplicationController
  def new
    # Viewへ渡すインスタンス変数にmodelオブジェクトを作成
    @list = List.new
  end
  
  def create
    # データを受け取り、新規登録するためのインスタンス作成
    list = List.new(list_params)
    # データをデータベースにほぞんするためのsaveメソッドの実行
    list.save
    # トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  
  private # これより下に記述すると、アクションとして認識されなくなり、
          # メソッドの呼び出しを制限できる。
  
  # ストロングパラメータ
  def list_params         # 本来であればアクションとして認識し、URLで呼び出せてしまう。
  # praivateメソッドは「モデル名_params」でする
    params.require(:list).permit(:title, :body)
  end
  
end