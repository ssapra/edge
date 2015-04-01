Organization.destroy_all
Track.destroy_all
Course.destroy_all
CourseLink.destroy_all

o = Organization.create name: 'Edge UChicago'
t1 = Track.create name: 'General', description: 'Open to all students, General Sessions focus on creating a fun and engaging community for students to exchange ideas, meeting future team members, and just chatting about common interests. We provide you with the resources and connections to push your interests or ideas as far as they will take you. Events in the past have included mixers with Northwestern, startup competition application workshops, and industry talks to spark inspiration.', application_link: '', enrollment_open: false, organization_id: o.id
t2 = Track.create name: 'Labs', description: 'This track accepts teams beginning in Winter quarter and aims to provide mentorship, guest speakers, and extensive training within in supportive and highly rewarding environment. This program focuses on creating a pitch deck, building a business plan, and gaining hands-on experience while preparing for several entrepreneur competitions. Guest speakers from Booth, experienced entrepreneurs from 1871, and more will speak about their experiences and answer any questions you may have.', application_link: '', enrollment_open: false, organization_id: o.id
t3 = Track.create name: 'Academy', description: 'This track offers an exploration of the skills needed for developing an application.', organization_id: o.id, application_link: '', enrollment_open: false
t4 = Track.create name: 'Ventures', description: 'This track is sponsored by Midway Ventures and Uncommon Ventures, both UChicago organizations, and provides students with opportunities to learn about VC from a hands on perspective. Students can actively screen and source investment deals and to learn about the processes of early stage investing and present to actual Chicago VCs in the track and sit on a student board to fund real UChicago companies. The Venture Track provides students interested in venture capital with an opportunity to actively source deals as potential investments and to add value to the local startup community.', organization_id: o.id, application_link: '', enrollment_open: false
c1 = Course.create title: 'Introduction to Website Design', description: 'Ever wondered what it takes to build your own website from scratch, or how to approach building a website that looks and feels great to use? Join Edge this Spring Quarter for a free, introductory class to HTML, CSS and design principles.\nStarting from the beginning, the instructors will walk you through your first line of HTML code, to a basic, but fully-functional website. The goal is to present you with the skills, knowledge and resources to build your own site and get started as a Web Designer.', details: '7:00 - 8:00pm | Chicago Innovation Exchange | Monday and Thursday 2nd - 5th week', instructor: 'Chris Thoburn', application_link: '', enrollment_open: false, track_id: t3.id
c2 = Course.create title: 'Introduction to Web Development', description: 'The purpose of this course is to provide a means to learn more about technology and specifically, the fundamentals for web development. Many students who have some previous background in front-end development or business development are curious about backend-development and what is involved in building an application. Rather than relying on other programmers to build your idea, these students are encouraged to learn by themselves. However, CS classes do not focus heavily on web development for non-CS students. Dev bootcamp classes are too expensive and intense for a general curiosity. And of course self-study can be a frustrating process that can stifle all of the fun. Thus, this class was born to provide students an opportunity to learn a new skill with the help of peers and student instructors as an introduction to application development.', details: '6:00 - 7:00pm | Chicago Innovation Exchange | Monday and Thursday 2nd - 9th week', instructor: 'Shaan Sapra', application_link: '', enrollment_open: false, track_id: t3.id
c3 = Course.create title: 'Introduction to Graphic Design', description: 'While the skills we will learn work with web design, we will focus on manipulating photos and creating some simple, standalone designs. We will NOT be learning to code or making a web page. By the end of this course you will be able to do most photo edits (resizing, color-correction, background removal, transposing people/objects/skies, and proper exporting) and design a simple logo (or a wallpaper/poster/t-shirt).', details: '6:30 - 7:30pm | Crerar Library CSIL Lab 2 | Tuesday and Wednesday 2nd - 5th week', instructor: 'Zach Augustine', application_link: '', enrollment_open: false, track_id: t3.id
CourseLink.create text: 'Piazza', link: 'https://piazza.com/class/i7v81srbyis7l5', course_id: c1.id
CourseLink.create text: 'Piazza', link: 'https://piazza.com/class/i7v82ts1ju64m6', course_id: c2.id
CourseLink.create text: 'Github', link: 'https://github.com/edge-academy/Introduction-to-Web-Development', course_id: c2.id
CourseLink.create text: 'Piazza', link: 'https://piazza.com/class/i7v83inj7ll1cp', course_id: c3.id
