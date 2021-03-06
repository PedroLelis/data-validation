# Current version (not yet released; still in development)

## Major Features and Improvements

* Add support for computing statistics over slices of data.
* Performance improvement due to optimizing inner loops.
* Add support for generating statistics from a pandas dataframe.
* Performance improvement due to pre-allocating tf.Example in
  TFExampleDecoder.
* Performance improvement due to merging common stats generator, numeric stats
  generator and string stats generator as a single basic stats generator.
* Performance improvement due to merging top-k and uniques generators.
* Add a `validate_instance` function, which checks a single example for
  anomalies.
* Add a utility method `get_statistics_html`, which returns HTML that can be
  used for Facets visualization outside of a notebook.
* Add support for schema inference of semantic domains.

## Bug Fixes and Other Changes

* Use constant '__BYTES_VALUE__' in the statistics proto to represent a bytes
  value which cannot be decoded as a utf-8 string.
* Introduced CombinerFeatureStatsGenerator, a specialized interface for
  combiners that do not require cross-feature computations.
* Expand unit test coverage.
* Add optional frequency threshold that allows keeping only the most frequent
  values that are present in a minimum number of examples.
* Add optional desired batch size that allows specification of the number of
  examples to include in each batch.
* Depends on `numpy>=1.14.5,<2`.
* Depends on `protobuf>=3.6.1,<4`.
* Depends on `apache-beam[gcp]>=2.10,<3`.
* Depends on `scikit-learn>=0.18,<1`.
* Depends on `IPython>=5.0`.
* Requires pre-installed `tensorflow>=1.12,<2`.

## Breaking changes
* Represent batch as a list of ndarrays instead of ndarrays of ndarrays.
* Modify decoders to return ndarrays of type numpy.float32 for FLOAT features.

## Deprecations

# Release 0.11.0

## Major Features and Improvements

* Add option to infer feature types from schema when generating statistics over
  CSV data.
* Add utility method `set_domain` to set the domain of a feature in the schema.
* Add option to compute weighted statistics by providing a weight feature.
* Add a PTransform for decoding TF examples.
* Add utility methods `write_schema_text` and `load_schema_text` to write and
  load the schema protocol buffer.
* Add option to compute statistics over a sample.
* Optimize performance of statistics computation (~2x improvement on benchmark
  datasets).
* Added Getting Started Example Colab and removed previous Jupyter notebook

## Bug Fixes and Other Changes

* Depends on `apache-beam[gcp]>=2.8,<3`.
* Depends on `tensorflow-transform>=0.11,<0.12`.
* Depends on `tensorflow-metadata>=0.9,<0.10`.
* Fix bug in clearing oneof domain\_info field in Feature proto.
* Fix overflow error for large integers by casting them to STRING type.
* Added API docs.

## Breaking changes

* Requires pre-installed `tensorflow>=1.11,<2`.
* Make tf.Example decoder to represent a feature with no value list as a
  missing value (None).
* Make StatsOptions as a class.

## Deprecations

# Release 0.9.0

* Initial release of TensorFlow Data Validation.
