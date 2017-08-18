In the context of digital sound archives, an innovative web framework for automatic analysis and manual annotation of audio files has been developed. This web framework, is called Timeside and is available under an open-source license.

The TimeSide framework associates an audio processing engine, an audio database, a web API and a client-side multimedia player.

The audio processing engine is written in Python language and has been designed for speech and audio signal analysis and Music Information Retrieval (MIR) tasks. It includes a set of audio analysis plugins and additionally wraps several state-of-the-art audio features extraction libraries to provide automatic annotation, segmentation and Music Information Retrieval analysis. It also provides decoding and encoding methods for most common multimedia formats.

The audio database application is handled through Django (Python) and is interfaced with the audio processing engine.

The web API component provides these functionalities over the web to enable web client to run analysis on the sounds in the audio database.
Last but not least, the multimedia player provides an web player associated with several sound and analysis visualizations together with an annotations editor through a multi-tracks display.


The TimeSide platform is available as an open-source project at the following addresses:

TimeSide: https://github.com/Parisson/TimeSide

