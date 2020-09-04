User.create!(
  id: '1',
  name: 'BIANKBYS',
  email: 'sample@example.com',
  password: '11111111',
  password_confirmation: '11111111',
  avatar:File.open('./public/images/man-3662939_1280.jpg'),
  jobrequest: 'biankobayashi@gmail.com',
  intro: 'my food in KOBE ',
  backimage:File.open("./public/images/store-984393_1280.jpg")
)
Post.create!(
  user_id: '1',
  theme: 'Japan',
  image: File.open("./public/images/japan-2014618_1920.jpg"),
  title: 'chill hiphop jazz',
  music: File.open("./public/musics/[FREE] Freestyle Type Beat - Full  Type Beat 2019  Rap Beats Freestyle Instrumental Fast.mp3")
)
Post.create!(
  user_id: '1',
  theme: 'SMoRK',
  image: File.open("./public/images/sad-.jpg"),
  title: ' r&b sad mood rap',
  music: File.open("./public/musics/Love story  Jazz Type BeatSmooth Saxophone Hip Hop Instrumental  Chill boom bap type beat.mp3")
)
Post.create!(
  user_id: '1',
  theme: '現実と夢',
  image: File.open("./public/images/paint-2985569_1280.jpg"),
  title: 'emo hiphop rap rip',
  music: File.open("./public/musics/[FREE] Freestyle Type Beat - Full  Type Beat 2019  Rap Beats Freestyle Instrumental Fast.mp3")
)
Post.create!(
  user_id: '1',
  theme: '未来...',
  image: File.open("./public/images/hongkong-4467663_1280.jpg"),
  title: 'emo hiphop rap rip',
  music: File.open("./public/musics/[FREE] Freestyle Type Beat - Full  Type Beat 2019  Rap Beats Freestyle Instrumental Fast.mp3")
)
Post.create!(
  user_id: '1',
  theme: 'in da house',
  image: File.open("./public/images/dahlia-3716012_1280.jpg"),
  title: 'trap hiphop haed ',
  music: File.open("./public/musics/Chill - Boom Bap Beat  (FREE FOR PROFIT USE).mp3")
)
Post.create!(
  user_id: '1',
  theme: '飛騨',
  image: File.open("./public/images/48273592_custom-1.jpg"),
  title: 'trap hiphop haed reggae ',
  music: File.open("./public/musics/Chill - Boom Bap Beat  (FREE FOR PROFIT USE).mp3")
)
Post.create!(
  user_id: '1',
  theme: 'summer',
  image: File.open("./public/images/boy.jpg"),
  title: 'old school hiphop haed chill ',
  music: File.open("./public/musics/Chill - Boom Bap Beat  (FREE FOR PROFIT USE).mp3")
)
Post.create!(
  user_id: '1',
  theme: '線路の先道',
  image: File.open("./public/images/blue.jpg"),
  title: 'jazz rap haed emotion ',
  music: File.open("./public/musics/Chill - Boom Bap Beat  (FREE FOR PROFIT USE).mp3")
)
Post.create!(
  user_id: '1',
  theme: 'じゅねんご',
  image: File.open("./public/images/people640.jpg"),
  title: 'r&b rap hiphop chill ',
  music: File.open("./public/musics/Chill - Boom Bap Beat  (FREE FOR PROFIT USE).mp3")
)
Post.create!(
  user_id: '1',
  theme: 'European',
  image: File.open("./public/images/training-828741_1280.jpg"),
  title: 'reggae rap hiphop old school',
  music: File.open("./public/musics/Chill - Boom Bap Beat  (FREE FOR PROFIT USE).mp3")
)