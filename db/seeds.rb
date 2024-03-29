User.create!([
  { name: "Dan small", timezone: "PT", email: "dansmall@test.com", password: "password" },
  { name: "John Doe", timezone: "CT", email: "johndoe@test.com", password: "password" },
  { name: "Kat Clayton", timezone: "ET", email: "katclayton@test.com", password: "password" },
  { name: "Debbie White", timezone: "MT", email: "debbiewhite@test.com", password: "password" },
  { name: "Ed White", timezone: "MT", email: "edwhite@test.com", password: "password" },
  { name: "Colin Brown", timezone: "PT", email: "colinbrown@test.com", password: "password" },
])
Event.create!([
  { title: "UFC Fight Night", date: "June 25, 2022", time: "7:00 pm", location: "UFC APEX, Las Vegas, Nevada, USA", event_image: "https://cdn.vox-cdn.com/thumbor/2Y9HIYSYuyEmEw8mnddxUpIfGDc=/0x0:1980x2844/1200x800/filters:focal(852x415:1168x731)/cdn.vox-cdn.com/uploads/chorus_image/image/70927093/bmo9pp2uae591.5.jpg", time_format: "2022-06-25 19:00", timezone_format: "US/Pacific" },
  { title: "UFC 276", date: "July 2, 2022", time: "7:00 pm", location: "T-Mobile Arena, Las Vegas, Nevada, USA", event_image: "https://espnpressroom.com/us/files/2022/06/UFC_276_LasVegas_EndCard_1920x1080_sm.jpg", time_format: "2022-07-02 19:00", timezone_format: "US/Pacific" },
])
Fighter.create!([
  { name: "Arman Tsarukyan", age: "25", height: "5'7", weight: "155", reach: "72", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-09/71462%252Fprofile-galery%252Ffullbodyleft-picture%252FTSARUKYAN_ARMAN_L_09-18.png?itok=52KRclw2", video: "https://youtu.be/VtCMXxuy0zI", win: "18", loss: "2", draw: "0", organization: "UFC" },
  { name: "Mateusz Gamrot", age: "31", height: "5'10", weight: "155", reach: "70", stance: "Southpaw", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-06/71373277-e845-4f33-8229-849d0838ed2b%252FGAMROT_MATEUSZ_L_06-25.png?itok=EQG8I-Sj", video: "https://youtu.be/0r4V3Iv3d8g", win: "20", loss: "1", draw: "0", organization: "UFC" },
  { name: "Shavkat Rakhmonov", age: "27", height: "6'1", weight: "170", reach: "77", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-06/71576%252Fprofile-galery%252Ffullbodyleft-picture%252FRAKHMONOV_SHAVKAT_L_06-26.png?itok=vEZYSVtw", video: "https://youtu.be/vh9I68QLdZY", win: "15", loss: "0", draw: "0", organization: "UFC" },
  { name: "Neil Magny", age: "34", height: "6'3", weight: "170", reach: "80", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-05/68901%252Fprofile-galery%252Ffullbodyleft-picture%252FMAGNY_NEIL_L_05-08.png?VersionId=null&itok=0rDn0XOn", video: "https://youtu.be/0gyAp1wFjUE", win: "26", loss: "9", draw: "0", organization: "UFC" },
  { name: "Josh Parisian", age: "33", height: "6'4", weight: "265", reach: "79", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-06/71418%252Fprofile-galery%252Ffullbodyleft-picture%252FPARISIAN_JOSH_L_06-19.png?VersionId=null&itok=wUdYTPvv", video: "https://youtu.be/OeFKWOkXsO0", win: "14", loss: "5", draw: "0", organization: "UFC" },
  { name: "Alan Baudot", age: "34", height: "6'3", weight: "243", reach: "79", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-02/43c435e6-4a84-4b86-8672-1cd4f415dc63%252FBAUDOT_ALAN_L_02-19.png?itok=ud2fb_S0", video: "https://youtu.be/xEJ3PtnIymE", win: "8", loss: "3", draw: "0", organization: "UFC" },
  { name: "Thiago Moises", age: "27", height: "5'9", weight: "155", reach: "70", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-07/MOISES_THIAGO_L_07-17.png?itok=t7A27ZGC", video: "https://youtu.be/gFFMns1GOvg", win: "15", loss: "6", draw: "0", organization: "UFC" },
  { name: "Christos Giagos", age: "32", height: "5'10", weight: "155", reach: "71", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-05/67634%252Fprofile-galery%252Ffullbodyleft-picture%252FGIAGOS_CHRISTOS_L_05-15.png?VersionId=null&itok=2vyjjneq", video: "https://youtu.be/6bF-HFMdhJ4", win: "19", loss: "9", draw: "0", organization: "UFC" },
  { name: "Nate Maness", age: "31", height: "5'10", weight: "135", reach: "72", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-09/68367%252Fprofile-galery%252Ffullbodyleft-picture%252FMANESS_NATE_L_09-18.png?itok=lXB48EY7", video: "https://youtu.be/rcwUlkyf5zI", win: "14", loss: "1", draw: "0", organization: "UFC" },
  { name: "Umar Nurmagomedov", age: "24", height: "5'8", weight: "135", reach: "69", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-03/d57195df-5f24-4d29-a65d-84d4f4bf3d37%252FNURMAGOMEDOV_UMAR_L_03-05.png?itok=erMJibXF", video: "https://youtu.be/kixMWClmP80", win: "14", loss: "0", draw: "0", organization: "UFC" },
  { name: "Israel Adesanya", age: "32", height: "6'4", weight: "185", reach: "80", stance: "Switch", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-06/68129_profile-galery_fullbodyleft-picture_ADESANYA_ISRAEL_L_06-12.png?VersionId=null&itok=lddfaxZg", video: "https://youtu.be/6ohHe543_dw", win: "22", loss: "1", draw: "0", organization: "UFC" },
  { name: "Jared Cannonier", age: "38", height: "5'11", weight: "185", reach: "77", stance: "Switch", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-08/68185%252Fprofile-galery%252Ffullbodyleft-picture%252FCANNONIER_JARED_L_08-21.png?itok=dt4xb-4l", video: "https://youtu.be/XNp1eKsIc_Y", win: "15", loss: "5", draw: "0", organization: "UFC" },
  { name: "Alexander Volkanovski", age: "33", height: "5'11", weight: "145", reach: "71", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-04/0984640e-8ef9-4283-afc3-d64ac0a0240a%252FVOLKANOVSKI_ALEXANDER_L_BELT_04-09.png?itok=2jQs8w9O", video: "https://youtu.be/GGLO2fBtEgo", win: "24", loss: "1", draw: "0", organization: "UFC" },
  { name: "Max Holloway", age: "30", height: "5'11", weight: "145", reach: "69", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-11/68778%252Fprofile-galery%252Ffullbodyleft-picture%252FHOLLOWAY_MAX_L_11-13.png?itok=rfWvn7lc", video: "https://youtu.be/Fh-PoFV6Xdk", win: "23", loss: "6", draw: "0", organization: "UFC" },
  { name: "Sean Strickland", age: "31", height: "6'1", weight: "185", reach: "76", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-03/fe752a6f-ea39-4367-8e36-63ffbbb24729%252FSTRICKLAND_SEAN_L_02-05.png?itok=gzosOLTY", video: "https://youtu.be/xHiwI04xlSY", win: "25", loss: "3", draw: "0", organization: "UFC" },
  { name: "Francis Ngannou", age: "35", height: "6'4", weight: "250", reach: "83.0", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-01/3d75a594-27a1-4c19-875a-8d7d4dc17b42%252FNGANNOU_FRANCIS_L_BELT_01-22.png?itok=EcfIjUew", video: "https://youtu.be/jLqyRdwDzBQ", win: "12", loss: "2", draw: "1", organization: "UFC" },
  { name: "Alex Pereira", age: "31", height: "6'4", weight: "185", reach: "79", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-11/69696%252Fprofile-galery%252Ffullbodyleft-picture%252FPEREIRA_ALEX_L_11-06.png?itok=h6bQINHC", video: "https://youtu.be/8lVFQC9hAzk", win: "5", loss: "1", draw: "0", organization: "UFC" },
  { name: "Lauren Murphy", age: "38", height: "5'5", weight: "125", reach: "67", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-06/68552%252Fprofile-galery%252Ffullbodyleft-picture%252FMURPHY_LAUREN_L_06-12.png?VersionId=null&itok=6PwmmIr2", video: "https://youtu.be/2vw_k4_8sqM", win: "15", loss: "5", draw: "0", organization: "UFC" },
  { name: "Miesha Tate", age: "36", height: "5'6", weight: "125", reach: "65", stance: "Orthodox", image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-07/TATE_MIESHA_L_07-17.png?itok=l3ajmGkB", video: "https://youtu.be/ipXNP1JjZY4", win: "19", loss: "8", draw: "0", organization: "UFC" },
])
FavoriteFighter.create!([
  { user_id: 1, fighter_id: 15 },
  { user_id: 1, fighter_id: 1 },
  { user_id: 2, fighter_id: 15 },
  { user_id: 2, fighter_id: 16 },
  { user_id: 2, fighter_id: 1 },
  { user_id: 3, fighter_id: 16 },
  { user_id: 3, fighter_id: 19 },
  { user_id: 3, fighter_id: 18 },
  { user_id: 4, fighter_id: 18 },
  { user_id: 4, fighter_id: 2 },
  { user_id: 4, fighter_id: 16 },
  { user_id: 5, fighter_id: 1 },
  { user_id: 6, fighter_id: 1 },
  { user_id: 6, fighter_id: 16 },
])
FightNight.create!([
  { fighter_id: 1, event_id: 1 },
  { fighter_id: 2, event_id: 1 },
  { fighter_id: 3, event_id: 1 },
  { fighter_id: 4, event_id: 1 },
  { fighter_id: 5, event_id: 1 },
  { fighter_id: 6, event_id: 1 },
  { fighter_id: 7, event_id: 1 },
  { fighter_id: 8, event_id: 1 },
  { fighter_id: 9, event_id: 1 },
  { fighter_id: 10, event_id: 1 },
  { fighter_id: 11, event_id: 2 },
  { fighter_id: 12, event_id: 2 },
  { fighter_id: 13, event_id: 2 },
  { fighter_id: 14, event_id: 2 },
  { fighter_id: 15, event_id: 2 },
  { fighter_id: 17, event_id: 2 },
  { fighter_id: 18, event_id: 2 },
  { fighter_id: 19, event_id: 2 },
])

SelectedEvent.create!([
  { user_id: 1, event_id: 1 },
  { user_id: 1, event_id: 2 },
  { user_id: 2, event_id: 2 },
  { user_id: 3, event_id: 2 },
  { user_id: 4, event_id: 2 },
  { user_id: 5, event_id: 1 },
  { user_id: 5, event_id: 2 },
  { user_id: 6, event_id: 2 },
  { user_id: 6, event_id: 1 },
])
LiveStream.create!([
  { url: "https://www.roku.com", event_id: 1 },
  { url: "http://methstreams.com/mma-streams-4/", event_id: 1 },
  { url: "https://www.youtube.com/user/UFC/videos", event_id: 1 },
  { url: "https://www.roku.com", event_id: 2 },
  { url: "http://methstreams.com/mma-streams-4/", event_id: 2 },
  { url: "https://www.youtube.com/user/UFC/videos", event_id: 2 },
])
