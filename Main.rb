#! ruby -E utf-8
# coding: shift_jis
require 'dxruby'

require"./Script/Setting.rb"
require"./Script/NPC.rb"
require"./Script/Debug.rb"

$debug = 1

FILENAME = 'Settings.txt'
Setting.instance.load(FILENAME)

Debug.log

Window.loadIcon("./Image/test.ico")
Window.resize(Setting.instance.width, Setting.instance.height)

player = Npc.new
player.name = "player"

Window.loop do

Window.draw(100, 100, player.image)  # data.pngを描画する

  if Input.key_push?(K_ESCAPE) then  #ESCを押した判定
    break #ウィンドウを閉じて終了する
  end

end
