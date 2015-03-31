Organization.destroy_all
Track.destroy_all
Course.destroy_all
CourseLink.destroy_all

o = Organization.create name: 'Edge UChicago'
t1 = Track.create name: 'General', organization_id: o.id
t2 = Track.create name: 'Labs', organization_id: o.id
t3 = Track.create name: 'Academy', organization_id: o.id
t4 = Track.create name: 'Ventures', organization_id: o.id
t5 = Track.create name: 'Events', organization_id: o.id
c1 = Course.create title: 'Introduction to Website Design', description: 'Ever wondered what it takes to build your own website from scratch, or how to approach building a website that looks and feels great to use? Join Edge this Spring Quarter for a free, introductory class to HTML, CSS and design principles.\nStarting from the beginning, the instructors will walk you through your first line of HTML code, to a basic, but fully-functional website. The goal is to present you with the skills, knowledge and resources to build your own site and get started as a Web Designer.', details: '7:00 - 8:00pm | Chicago Innovation Exchange | Monday and Thursday 2nd - 5th week', instructor: 'Chris Thoburn', application_link: '', enrollment_open: false, track_id: t3.id
c2 = Course.create title: 'Introduction to Web Development', description: 'The purpose of this course is to provide a means to learn more about technology and specifically, the fundamentals for web development. Many students who have some previous background in front-end development or business development are curious about backend-development and what is involved in building a web application.', details: '6:00 - 7:00pm | Chicago Innovation Exchange | Monday and Thursday 2nd - 9th week', instructor: 'Shaan Sapra', application_link: '', enrollment_open: false, track_id: t3.id
c3 = Course.create title: 'Introduction to Graphic Design', description: 'While the skills we will learn work with web design, we will focus on manipulating photos and creating some simple, standalone designs. We will NOT be learning to code or making a web page. By the end of this course you will be able to do most photo edits (resizing, color-correction, background removal, transposing people/objects/skies, and proper exporting) and design a simple logo (or a wallpaper/poster/t-shirt).', details: '6:30 - 7:30pm | Crerar Library CSIL Lab 2 | Tuesday and Wednesday 2nd - 5th week', instructor: 'Zach Augustine', application_link: '', enrollment_open: false, track_id: t3.id
CourseLink.create text: 'Piazza', link: 'https://piazza.com/class/i7v81srbyis7l5', course_id: c1.id
CourseLink.create text: 'Piazza', link: 'https://piazza.com/class/i7v82ts1ju64m6', course_id: c2.id
CourseLink.create text: 'Github', link: 'https://github.com/edge-academy/Introduction-to-Web-Development', course_id: c2.id
CourseLink.create text: 'Piazza', link: 'https://piazza.com/class/i7v83inj7ll1cp', course_id: c3.id
