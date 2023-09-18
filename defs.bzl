"""
To load these rules, add this to the top of your `BUILD` file:

```starlark
load("@rule_oci_bundle//:defs.bzl", ...)
```
"""
load("//private:bundle.bzl", _oci_bundle = "oci_bundle")

oci_bundle_rule = _oci_bundle

def oci_bundle(name, images = {}, **kwargs):
    """Macro wrapper around [oci_bundle_rule](#oci_bundle_rule).

    Allows the images attribute to be a string keyed label dict.

    Args:
        name: name of resulting oci_bundle_rule
        images: a reference to image dict.
        **kwargs: other named arguments to [oci_tarball_rule](#oci_tarball_rule).
    """

    oci_bundle_rule(
        name = name,
        image_refs = images.keys(),
        image_targets = images.values(),
        **kwargs
    )
