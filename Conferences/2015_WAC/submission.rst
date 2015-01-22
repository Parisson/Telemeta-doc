
==============================
 Title of your Web Audio Talk
==============================

.. Title is evocative and short. If in doubt, keep it brief and descriptive.

The Telemeta platform and TimeSide framework: Audio archives management and Automatic analysis.

============
 Topic(s) *
============
Please select one or more topics for your talk

- [x]    Innovative audio and music based web applications (with social and user experience aspects)
- [ ]    Client-side audio processing (real-time or non real-time)
- [x]    Audio data and metadata formats and network delivery
- [x]    Server-side audio processing and client access
- [ ]    Client-side audio engine and rendering
- [ ]    Frameworks for audio manipulation
- [ ]    Web Audio API design and implementation
- [x]    Client-side audio visualization
- [x]    Multimedia integration
- [x]    Web standards and use of standards within audio based web projects
- [ ]    Hardware, tangible interface and use of Web Audio API
- [ ]    Other: 

=========
 Content
=========
..  Fill here the idea and/or the problem the talk addresses - at least 3 paragraphs.
    For libraries or web app, you should begin with a short summary of it and the problematic it tries to solve or its innovative aspect in term of API or user experience.

..  Please provide concrete details on what will be covered by your talk, and may give a link to a Github repository and/or multimedia (audio/video) content describing the work and ideas you want to present.

 ..  Please answer one or more of the following questions:
     - What already existed (equivalent libraries or web app, native app or desktop ones) ?
     - What was your specific needs ?
     - What is new with your approach, and why this approach fits your needs ?
     - How did you use web standards (especially Web Audio API) ?
     - How or did you improve your web app or library based on user feedback ?


Telemeta isan open-source web audio platform for the management and access to digital sound archives and audio metadata. It is developed by the Parisson company and other open source developers since 2007.

Telemeta focuses on the enhanced and collaborative user-experience in accessing audio items and their associated metadata and on the possibility forthe expert users to further enrich those metadata though hierarchical and structured fields, thesaurus and ontologies.

This platform has been deployed since 2011 in the context of ethnomusicological archives and hold the archives of the Center for Research in Ethnomusicology, which is the most important ethnic music collection in Europe. The platform is fully operational and is now used on a daily basis by researchers, teachers and archivists in the fields of ethnomusicology, anthropology, linguistics and acoustics.

The Telemeta audio engine relies on TimeSide, an open audio processing framework written in Python and JavaScript.
Not only TimeSide provides Telemeta with audio decoding, encoding and streaming methods but with a set of on-the-fly signal analysis methods as well.
Given these low and high level signal analysis capabilities, various audio signal representations can be computed and incorporated in the embedded HTML audio player.

By  additionally wrapping several audio features extraction libraries,various automatic annotation, segmentation and musicological analysis can be performed over the audio archives and metadata.

The TimeSide engine architecture is composed of several modules and makes it easy to develop and add new plugins.

Through collaboration with academic research labs in computer science, speech processing and music information retrieval, new automatic analysis functionalities are brought to the platform regularly.

As component of a fully functional but continuously evolving web platform, the development of both Telemeta and TimeSide is secured with unitary testing process.
     
The Telemeta and TimeSide platform are available as open-source projects at the following addresses: 
 - Telemeta: https://github.com/yomguy/Telemeta
 - TimeSide: https://github.com/yomguy/TimeSide

Questions/answers:
 
 - What already existed (equivalent libraries or web app, native app or desktop ones) ?

  Equivalent web app such as FreeSound,  SoundCloud, P2P apps and many desktop softwares (SonicVisualiser, ELAN,  Esonoclaste, etc.) already existed but there was no open source collaborative audio  web application which also provides a rich support of metadata with database capabilities.

  So Telemeta has been started.

 - What was your specific needs ?

  We needed a  good web object oriented framework for developing (Django), a fast and  smart transcoding, streaming and analyzing audio engine (TimeSide), then  a good use case with original music data (CREM)

- What is new with your approach, and why this approach fits your needs ?

  We  decided to build a platform with on-demand and on-the-fly processing so  that the service can be scaled and improved over time and usage. 
 
 - How did you use web standards (especially Web Audio API) ?

  Telemeta  templates are fully written in HTML5. Interactions with the API use  JSON or XML RPC. The TimeSide player uses SoundManager2 which wraps the  Web Audio API with some control and fallback methods.

 - How or did you improve your web app or library based on user feedback ?

  Bug  trackers are used on telemeta.org and GitHub by the developers and the  users to debug and define new functions or metadata classes.

  Some  research missions have also engaged some studies about the use of the  CREM's platform. These missions have emerged some special usecases in the fields of learning, research and museology for example.



