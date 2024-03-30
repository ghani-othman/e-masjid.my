
import { config } from '../../Config'
import axios from "axios"
const apiServer = config.url.TETAPAN_API_BASE_URL

export async function fetchSolat(zon) {
	const response = await fetch('https://api.waktusolat.app/v2/solat/' + zon)
	const data = await response.json()
	return data
}

export const getTetapanMasjid = async () => {
	try {
	// const response = await axios.get(`${apiServer}/tetapan`)
	  const response = [{ kunci : 'ZON_MASJID', nilai : "PNG01" }] // hardcoded for now
	  return response
	} catch (error) {
	  console.error(error)
	}
  }

  