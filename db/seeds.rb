puts "Starting..."
# user= User.create([
#   {email:"ellame@gmail.com", password:"98765", password_confirmation:"98765"},
#   {email:"biko@gmail.com", password:"98765", password_confirmation:"98765"}
#   ])

# profile= Profile.create([
#   {gender:"female", age:"56", occupation:"Software Developer", full_name:"Ellame", user_id:1},
#   {gender:"male", age:"26", occupation:"Chef", full_name:"Biko", user_id:2}
#   ])

# categories= Category.create([
#   { name: 'Academic' },
#   { name: 'Financial' },
#   { name: 'Health and Fitness' },
#   { name: 'Social and Relationship' },
#   { name: 'Creative' },
#   { name: 'Travel and Transportation' },
#   { name: 'Organizational' },
#   { name: 'Miscellaneous' }
# ])
# groups= Group.create([
#   { name: 'Personal' },
#   { name: 'Work' }
# ])
# tasks= Task.create([
#    {
#     title: 'Buy groceries',
#     start_date: '2023-07-06',
#     end_date: '2023-07-07',
#     description: 'Go to the supermarket and buy groceries for the week.',
#     label: 'non-urgent',
#     status: true,
#     reminder: true,
#     user_id: 1,
#     group_id: 1,
#     category_id: 1,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Prepare presentation',
#     start_date: '2023-07-08',
#     end_date: '2023-07-09',
#     description: 'Create slides and prepare a presentation for the upcoming meeting.',
#     label: 'moderate',
#     status: false,
#     reminder: true,
#     user_id: 2,
#     group_id: 1,
#     category_id: 2,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Submit research paper',
#     start_date: '2023-07-10',
#     end_date: '2023-07-12',
#     description: 'Complete the research paper and submit it to the professor.',
#     label: 'urgent',
#     status: true,
#     reminder: false,
#     user_id: 1,
#     group_id: 2,
#     category_id: 3,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Pay utility bills',
#     start_date: '2023-07-13',
#     end_date: '2023-07-14',
#     description: 'Pay electricity, water, and internet bills before the due date.',
#     label: 'non-urgent',
#     status: true,
#     reminder: true,
#     user_id: 2,
#     group_id: 1,
#     category_id: 1,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Plan vacation',
#     start_date: '2023-07-16',
#     end_date: '2023-07-20',
#     description: 'Research destinations, book accommodations, and plan activities for the upcoming vacation.',
#     label: 'moderate',
#     status: false,
#     reminder: true,
#     user_id: 1,
#     group_id: 2,
#     category_id: 8,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Update resume',
#     start_date: '2023-07-22',
#     end_date: '2023-07-22',
#     description: 'Revise and update resume to reflect recent work experience and skills.',
#     label: 'non-urgent',
#     status: true,
#     reminder: true,
#     user_id: 2,
#     group_id: 1,
#     category_id: 4,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Exercise for 30 minutes',
#     start_date: '2023-07-24',
#     end_date: '2023-07-24',
#     description: 'Engage in a 30-minute workout session to stay fit and healthy.',
#     label: 'non-urgent',
#     status: true,
#     reminder: true,
#     user_id: 1,
#     group_id: 2,
#     category_id: 5,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Organize team meeting',
#     start_date: '2023-07-26',
#     end_date: '2023-07-26',
#     description: 'Schedule and organize a team meeting to discuss project updates and next steps.',
#     label: 'moderate',
#     status: false,
#     reminder: true,
#     user_id: 2,
#     group_id: 1,
#     category_id: 2,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Read book',
#     start_date: '2023-07-28',
#     end_date: '2023-07-30',
#     description: 'Read a book from the recommended reading list for personal development.',
#     label: 'non-urgent',
#     status: true,
#     reminder: false,
#     user_id: 1,
#     group_id: 1,
#     category_id: 7,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#    {
#     title: 'Complete online course',
#     start_date: '2023-08-02',
#     end_date: '2023-08-10',
#     description: 'Finish the online course on web development and complete the final project.',
#     label: 'urgent',
#     status: false,
#     reminder: true,
#     user_id: 1,
#     group_id: 2,
#     category_id: 3,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Schedule dentist appointment',
#     start_date: '2023-08-05',
#     end_date: '2023-08-05',
#     description: 'Call the dentist and schedule a check-up appointment for next week.',
#     label: 'moderate',
#     status: true,
#     reminder: true,
#     user_id: 2,
#     group_id: 1,
#     category_id: 6,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Write blog post',
#     start_date: '2023-08-09',
#     end_date: '2023-08-09',
#     description: 'Prepare and write a blog post on the topic of digital marketing trends.',
#     label: 'non-urgent',
#     status: true,
#     reminder: false,
#     user_id: 1,
#     group_id: 1,
#     category_id: 7,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Review project proposal',
#     start_date: '2023-08-12',
#     end_date: '2023-08-13',
#     description: 'Review and provide feedback on the project proposal submitted by the team.',
#     label: 'non-urgent',
#     status: true,
#     reminder: true,
#     user_id: 2,
#     group_id: 2,
#     category_id: 2,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   },
#   {
#     title: 'Plan family gathering',
#     start_date: '2023-08-15',
#     end_date: '2023-08-15',
#     description: 'Coordinate and plan a family gathering for the upcoming holiday.',
#     label: 'moderate',
#     status: false,
#     reminder: true,
#     user_id: 1,
#     group_id: 1,
#     category_id: 5,
#     start_time:"2023-07-25T20:04:00.000Z",
#    end_time:'2023-07-25T20:04:00.000Z'
#   }
# ])
puts "done"