.. contents:: Table of Contents

Overview
========

This plugin adds `ReStructuredText`_ support to `Jekyll`_ and `Octopress`_.
It renders ReST in posts and pages, and provides a custom directive to
support Octopress-compatible syntax highlighting.

Requirements
============

* `Jekyll`_ *or* `Octopress`_ >= 2.0
* `Docutils`_
* `Pygments`_
* `RbST`_

Installation
============

1. Install Docutils and Pygments.

   One convenient way is to use `venv`_ and `pip`_:

   ::

      $ python3 -m venv .
      $ ./bin/pip install docutils pygments

   You can also use your distibution's package manager if you're on a
   linux install. For example, in Debian or Ubuntu, you can use apt ::

     $ sudo apt install python3-docutils python3-pygments

   or in Fedora, use dnf ::

     $ dnf install python-docutils python-pygments

2. Install RbST.

   If you use `bundler`_ add ``gem 'RbST'`` to your ``Gemfile`` in the
   ``development`` group, then run ``bundle install``. Otherwise,
   ``gem install RbST``.

3. Install the plugin.

   ::

      $ cd <site-directory>
      $ git submodule add https://github.com/languidnights/jekyll-rst.git _plugins/jekyll-rst

4. Start blogging in ReStructuredText. Any file with the ``.rst`` extension
   will be parsed as ReST and rendered into HTML.

   .. note:: Be sure to activate the ``jekyll-rst`` virtualenv before generating
      the site by issuing a ``bash ./bin/activate``. I suggest you follow `Harry
      Marr's advice`_ and create a ``.venv`` file that will  automatically
      activate the ``jekyll-rst`` virtualenv when you ``cd`` into your project.

Source Code Highlighting
========================

A ``code-block`` ReST directive is registered and aliased as ``sourcecode``.
It adds syntax highlighting to code blocks in your documents::

   .. code-block:: ruby

      # Output "I love ReST"
      say = "I love ReST"
      puts say

Optional arguments exist to supply a caption, link, and link title::

   .. code-block:: console
      :caption: Read Hacker News on a budget
      :url: http://news.ycombinator.com
      :title: Hacker News

      $ curl http://news.ycombinator.com | less

Octopress already includes style sheets for syntax highlighting, but you'll
need to generate one yourself if using Jekyll ::

   $ pygmentize -S default -f html > css/pygments.css

Octopress Tips
==============

* Use ``.. more`` in your ReST documents to indicate where Octopress's
  ``excerpt`` tag should split your content for summary views.

Contributing
============

I have only tested this fork on my personal websites. As the
`original project`_ hasn't had development since 2013, so it is quite
likely that things in the `Docutils`_ universe has changed since then,
so I anticipate there to be issues for more complex setups. 

If you have any issues, the best way to report them is through
`Github Issues`_

If you want to contribute and are proficient in either Python or Ruby,
then sending a `Pull request`_ is the best way to get your patch in
front of our eyes.

.. _original project: https://github.com/xdissent/jekyll-rst
.. _ReStructuredText: https://docutils.sourceforge.io/rst.html
.. _Jekyll: https://jekyllrb.com/
.. _Octopress: https://octopress.org/
.. _Docutils: https://pypi.org/project/docutils/
.. _Pygments: https://pypi.org/project/Pygments/
.. _RbST: https://rubygems.org/gems/RbST
.. _bundler: https://bundler.io/
.. _Harry Marr's advice: https://hmarr.com/2010/jan/19/making-virtualenv-play-nice-with-git/
.. _venv: https://docs.python.org/3/library/venv.html
.. _pip: https://docs.python.org/3/installing/index.html#installing-index
.. _Github Issues: https://github.com/languidnights/jekyll-rst/issues
.. _Pull request: https://github.com/languidnights/jekyll-rst/pulls
