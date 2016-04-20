
import unittest
from app import app


class TestApp(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

    def test_changePasswordForm_works(self):
        rv = self.app.post('/changepassword', data=dict(oldpassword="password",password="newpass12",confirm="newpass12"), follow_redirects=True)
        self.assertEqual(rv.status_code, 200)
        
    def test_changePasswordForm_works2(self):
        rv = self.app.post('/changepassword', data=dict(oldpassword="password",password="newpass2",confirm="newpass12"))
        self.assertTrue(b'incorrect' in rv.data)


if __name__ == '__main__':
    unittest.main()
