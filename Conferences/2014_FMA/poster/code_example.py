import timeside
from timeside.core import get_processor

# Define some processors:
file_decoder = get_processor('gst_dec')('sweep.wav')
analyzer = get_processor('level')()
grapher = get_processor('spectrogram_log')()
encoder = get_processor('gst_vorbis_enc')('sweep.ogg')

# Then, the magic pipeline:
(file_decoder | analyzer | grapher | encoder).run()

# Get the results:
grapher.render(output='image.png')
for key in analyzer.results.keys():
    print '%s in %s : %s'% (analyzer.results[key].name,
                            analyzer.results[key].unit,
                            analyzer.results[key].data)
