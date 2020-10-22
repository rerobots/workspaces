Workspaces by rerobots
======================

Introduction
------------

The current release of this documentation is available at
https://help.rerobots.net/workspaces

The notion of **workspaces** is developed in [the preliminaries section](
https://help.rerobots.net/prelim.html). The ambition of this repository is to
define workspace types and to provide code and documentation for producing new
workspace deployments that realize these types.


Building and testing
--------------------

A [Git LFS](https://git-lfs.github.com/) client is required to clone this
repository. Note that `git clone` will succeed without `git lfs` available, but
some large files will not be fetched.

To perform checks of the type definitions and other files,

    tests/lint

Recent results on [Travis CI](https://travis-ci.org/) are available at
https://travis-ci.org/rerobots/workspaces


Style guide
-----------

The default format for text is Markdown. Corresponding files should end with
`.md` or `.txt`. This ensures that the text can be well understood in a basic
monospace plaintext setting, and that some rendering can be performed when using
an appropriate viewer. (This argument is one of the generic arguments for using
Markdown.) Except for source examples or other raw code, lines should have
length at most 80.

LaTeX should be used for typesetting mathematics text. Mathematics rendering
within generated HTML pages uses [MathJax]( https://www.mathjax.org/).


Licenses
--------

All source code is provided as free software, released under the Apache License,
Version 2.0.  You may obtain a copy of the License at https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

All other content is released under the Creative Commons Attribution 4.0
International License. To get a copy of this license, visit
<https://creativecommons.org/licenses/by/4.0/> or send a letter to
Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

If you think that there is ambiguity about which license applies to a specific
part of this repository, then feel free to ask someone at rerobots, Inc.,
q@rerobots.net
