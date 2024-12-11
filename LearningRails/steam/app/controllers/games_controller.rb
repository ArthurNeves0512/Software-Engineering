class GamesController <ActionController::Base
  def show
    @nome = "Teste deu bom"
    render "index"
  end
  def testeDeGame
    @nomeDoGame = "Core Keeper"
    @preco = 75.10
    @studio = "FrontPage"
    render "coreKepper"
  end

  def nome
    @nomeDoGame = Game.find[params[:name]]
    render "coreKepper"
  end
end
