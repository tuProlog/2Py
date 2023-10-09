import unittest
from tuprolog.core import *
from tuprolog.core.impl import DefaultTermFormatter


class TestFormatters(unittest.TestCase):

    def test_term_formatter(self):
        formatter = DefaultTermFormatter()
        for term in [Atom.of('a'), Integer.of(1), Var.of("X")]:
            self.assertEqual(formatter.format(term), str(term))


if __name__ == '__main__':
    unittest.main()
